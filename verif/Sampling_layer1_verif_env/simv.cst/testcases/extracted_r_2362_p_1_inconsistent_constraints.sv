class c_2362_1;
    integer i = -392;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2362_1;
    c_2362_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz01z1x0z0zzz000z1z0z111zzz1zz1zxxxxzxxxzxxzxzzzzxxxzxxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
