class c_159_1;
    integer i = -157;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_159_1;
    c_159_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zzz11zzxxxzz0zx01z01zzx0000z00zxxzzzzzzxzxxzzzxxxxzzxxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
