class c_115_1;
    integer i = 115;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_115_1;
    c_115_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110x0x1001x0x01x10z111z01100z1zxzxzzzzxxzxxxzzxxxzzxxzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
