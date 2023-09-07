class c_1099_1;
    integer i = -182;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1099_1;
    c_1099_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzz1000x1xz11zzx1z0zxx110x1xx1zxxzzxzxxxzxzxzxzzxzxxxzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
