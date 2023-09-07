class c_2630_1;
    integer i = -437;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2630_1;
    c_2630_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1x00zzxz11x101z1xzxz0101z01zxzxzzxzzzzzzzxzxzzzxxzxxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
