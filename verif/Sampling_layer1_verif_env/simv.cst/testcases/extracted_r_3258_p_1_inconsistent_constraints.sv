class c_3258_1;
    integer i = -541;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3258_1;
    c_3258_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0z0xzzx00xz11x0z01z10zxxxxz11zzzzzxxzxzzxzzzzxzzxzxzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
