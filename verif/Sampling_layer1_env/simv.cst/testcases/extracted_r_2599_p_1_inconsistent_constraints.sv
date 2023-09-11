class c_2599_1;
    integer i = -432;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2599_1;
    c_2599_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11011xzx01z1zxxz00zx00x0xxxz0z0xzxxxxxxzzzxxzxzxzxzzzxzzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
