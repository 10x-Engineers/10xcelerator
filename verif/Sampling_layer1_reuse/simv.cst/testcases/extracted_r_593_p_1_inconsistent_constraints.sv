class c_593_1;
    integer i = -97;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_593_1;
    c_593_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1zx1000x000x0x01z10z00x1z110z1xxzzzzzzzxzzzxzxzzzzxxxzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
