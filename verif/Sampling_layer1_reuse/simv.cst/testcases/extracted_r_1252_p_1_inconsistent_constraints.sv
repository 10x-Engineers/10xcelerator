class c_1252_1;
    integer i = -207;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1252_1;
    c_1252_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xx1zzz0zxxzxx1xzzxx01xxz01zxzxxxzxzzxxzzzxzzxzxzzxxxxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
