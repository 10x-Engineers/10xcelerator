class c_392_1;
    integer i = -390;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_392_1;
    c_392_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zxz10x101x01z1zxx11zzx1zxzzxz1zxxxzxxzxxxxzzxzzzzzzxxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
