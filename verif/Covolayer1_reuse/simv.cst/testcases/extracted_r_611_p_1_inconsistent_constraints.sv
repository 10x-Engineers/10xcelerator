class c_611_1;
    integer i = -609;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_611_1;
    c_611_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z01z1x10z1xzz0010010x1x0z00x0zzzxzxzzxxxxxxzzxxxxxxzxxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
