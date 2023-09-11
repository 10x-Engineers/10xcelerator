class c_490_1;
    integer i = -80;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_490_1;
    c_490_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx1x010xz00zzzzzzz01z0z1x01x00xzzzxzxzxxxxzzzzxzxzzzxxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
