class c_718_1;
    integer i = 718;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_718_1;
    c_718_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz010zx1xz1010x111x00z1z01z1xz1zxzzzxxzzxxxzzzzzzzzzzzxzzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
