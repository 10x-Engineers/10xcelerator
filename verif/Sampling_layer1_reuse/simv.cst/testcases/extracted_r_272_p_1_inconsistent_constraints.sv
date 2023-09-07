class c_272_1;
    integer i = -44;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_272_1;
    c_272_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zzx0zxx0z0xzzzz001z0z011z01z01xxxxxzzxxzxzzxzzzxzxxzxzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
