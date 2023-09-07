class c_297_1;
    integer i = 297;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_297_1;
    c_297_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0xzxxx011zz01x0110xzxx10x00xzxxxxxzzxxxzzxzzxzxxxxxzzzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
