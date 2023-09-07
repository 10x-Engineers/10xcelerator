class c_3031_1;
    integer i = -504;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3031_1;
    c_3031_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00xxxx00xz11xzz01zz11xz1100xzzxzxxxxzzxzzxxxxzxzzxzzzxzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
