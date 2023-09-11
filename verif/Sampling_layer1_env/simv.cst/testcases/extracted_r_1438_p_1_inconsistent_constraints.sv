class c_1438_1;
    integer i = -238;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1438_1;
    c_1438_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0000xzzxxz1000xzx00z1z110xx0110zxxxzxzxzzxzzxzxxxzzxxxzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
