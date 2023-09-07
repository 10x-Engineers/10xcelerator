class c_1814_1;
    integer i = -301;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1814_1;
    c_1814_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx011x1001zx1x1z10z11xz00x1zz00xzxxxxzxzxxxxzxxxzzzzzxzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
