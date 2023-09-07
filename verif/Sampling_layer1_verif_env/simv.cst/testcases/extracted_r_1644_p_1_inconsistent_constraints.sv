class c_1644_1;
    integer i = -272;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1644_1;
    c_1644_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx000zz010011z01z0xzxx010z0xz1zzxxxzxzxxxzxzxzzxxzxxzzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
