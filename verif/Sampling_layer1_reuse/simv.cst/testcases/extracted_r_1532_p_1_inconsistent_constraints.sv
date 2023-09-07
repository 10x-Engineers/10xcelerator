class c_1532_1;
    integer i = -254;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1532_1;
    c_1532_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x1xx1zx10z11z1001xx011xxzxz0zxxxzzzzzxzzxxzxzxxxxzzxzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
