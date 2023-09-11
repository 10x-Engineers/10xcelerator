class c_537_1;
    integer i = 537;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_537_1;
    c_537_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x110z00zzxz10zz1zzz0101zzx110xxzzzzxxxzzxxxxxxxxxxzxxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
