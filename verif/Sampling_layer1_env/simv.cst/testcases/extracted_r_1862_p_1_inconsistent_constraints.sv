class c_1862_1;
    integer i = -309;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1862_1;
    c_1862_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z0xz0z01z101x101z10xxz00x00x0zxxzxzzxxzzzzzzzzzzzxxzzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
