class c_3164_1;
    integer i = -526;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3164_1;
    c_3164_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1z10110xxz111010xz00x01zx0z11xzzzxzxzzzzxzxzzzzxxxxzxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
