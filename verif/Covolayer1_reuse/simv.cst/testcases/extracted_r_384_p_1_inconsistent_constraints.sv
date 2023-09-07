class c_384_1;
    integer i = -382;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_384_1;
    c_384_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01z1zzxz111xx11zx1xxxxz00010z0zxxzxxxxzxxxzxzzzzxzzzzzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
